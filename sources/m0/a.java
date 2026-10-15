package m0;

import android.os.Build;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

/* JADX INFO: compiled from: EmojiEditTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f32084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32085b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f32086c = 0;

    /* JADX INFO: renamed from: m0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EmojiEditTextHelper.java */
    private static class C0202a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final EditText f32087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final g f32088b;

        C0202a(EditText editText, boolean z10) {
            this.f32087a = editText;
            g gVar = new g(editText, z10);
            this.f32088b = gVar;
            editText.addTextChangedListener(gVar);
            editText.setEditableFactory(m0.b.getInstance());
        }

        @Override // m0.a.b
        KeyListener a(KeyListener keyListener) {
            if (keyListener instanceof e) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new e(keyListener);
        }

        @Override // m0.a.b
        InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof c ? inputConnection : new c(this.f32087a, inputConnection, editorInfo);
        }

        @Override // m0.a.b
        void c(boolean z10) {
            this.f32088b.c(z10);
        }
    }

    /* JADX INFO: compiled from: EmojiEditTextHelper.java */
    static class b {
        b() {
        }

        KeyListener a(KeyListener keyListener) {
            return keyListener;
        }

        InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection;
        }

        void c(boolean z10) {
        }
    }

    public a(EditText editText, boolean z10) {
        androidx.core.util.h.g(editText, "editText cannot be null");
        if (Build.VERSION.SDK_INT < 19) {
            this.f32084a = new b();
        } else {
            this.f32084a = new C0202a(editText, z10);
        }
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f32084a.a(keyListener);
    }

    public InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f32084a.b(inputConnection, editorInfo);
    }

    public void c(boolean z10) {
        this.f32084a.c(z10);
    }
}
