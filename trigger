DELIMITER $$

CREATE TRIGGER log_insert_posts
AFTER INSERT ON tbl_posts
FOR EACH ROW
BEGIN
    INSERT INTO tbl_log (keterangan, user, waktu, title_lama, title_baru)
    VALUES (
        'INSERT', 
        CURRENT_USER(), 
        NOW(), 
        NULL, 
        NEW.title
    );
END$$

CREATE TRIGGER log_update_posts
BEFORE UPDATE ON tbl_posts
FOR EACH ROW
BEGIN
    INSERT INTO tbl_log (keterangan, user, waktu, title_lama, title_baru)
    VALUES (
        'UPDATE',
        CURRENT_USER(),
        NOW(),
        OLD.title,
        NEW.title
    );
END$$

CREATE TRIGGER log_delete_posts
BEFORE DELETE ON tbl_posts
FOR EACH ROW
BEGIN
    INSERT INTO tbl_log (keterangan, user, waktu, title_lama, title_baru)
    VALUES (
        'DELETE',
        CURRENT_USER(),
        NOW(),
        OLD.title,
        NULL
    );
END$$

DELIMITER ;
