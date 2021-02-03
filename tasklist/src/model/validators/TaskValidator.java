package model.validators;

import java.util.ArrayList;
import java.util.List;

import model.Task;

public class TaskValidator {
    public static List<String> validate(Task t) {
        List<String> errors = new ArrayList<String>();

        String title_error = validateTitle(t.getTitle());
        if(!title_error.equals("")) {
            errors.add(title_error);
        }

        String content_error = validateContent(t.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    // タイトルの必須入力チェック
    private static String validateTitle(String title) {
        if(title == null || title.equals("")) {
            return "タスク名が入力されていません。";
        }

        return "";
    }
    private static String validateContent(String content) {
        if(content == null || content.equals("")) {
            return "進捗情報が入力されていません。";
        }

        return "";
    }
}
