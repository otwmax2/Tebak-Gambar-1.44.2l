package m0;

import android.annotation.SuppressLint;
import android.text.Editable;
import androidx.emoji2.text.m;

/* JADX INFO: compiled from: EmojiEditableFactory.java */
/* JADX INFO: loaded from: classes.dex */
final class b extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f32089a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Editable.Factory f32090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class<?> f32091c;

    @SuppressLint({"PrivateApi"})
    private b() {
        try {
            f32091c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f32090b == null) {
            synchronized (f32089a) {
                if (f32090b == null) {
                    f32090b = new b();
                }
            }
        }
        return f32090b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class<?> cls = f32091c;
        return cls != null ? m.c(cls, charSequence) : super.newEditable(charSequence);
    }
}
