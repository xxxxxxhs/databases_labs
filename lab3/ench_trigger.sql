CREATE OR REPLACE FUNCTION update_area_object_enchantment_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE area_object
    SET ench_dest_count = (
        SELECT COUNT(DISTINCT destination_char_id) 
        FROM enchantment
        WHERE source_area_obj_id = COALESCE(NEW.source_area_obj_id, OLD.source_area_obj_id)
    )
    WHERE id = COALESCE(NEW.source_area_obj_id, OLD.source_area_obj_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_area_object_enchantment_count
AFTER INSERT OR UPDATE OR DELETE ON enchantment
FOR EACH ROW
EXECUTE FUNCTION update_area_object_enchantment_count();