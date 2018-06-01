package rashjz.info.app.springboot.utils;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

public class FileWriterUtils {
    public static void writeToDir(MultipartFile file) throws IOException {

        Path path = Paths.get(
                StaticParams.getUploadLocation()
                        + UUID.randomUUID().toString() + "."
                        + FilenameUtils.getExtension(file.getName()));
        Files.write(path, file.getBytes());


    }
}
