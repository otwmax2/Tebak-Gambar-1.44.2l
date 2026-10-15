package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: compiled from: AppCompatEmojiTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f1111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m0.f f1112b;

    m(TextView textView) {
        this.f1111a = textView;
        this.f1112b = new m0.f(textView, false);
    }

    InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f1112b.a(inputFilterArr);
    }

    void b(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f1111a.getContext().obtainStyledAttributes(attributeSet, f.j.f29146g0, i10, 0);
        try {
            int i11 = f.j.f29216u0;
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(i11) ? typedArrayObtainStyledAttributes.getBoolean(i11, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z10);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    void c(boolean z10) {
        this.f1112b.b(z10);
    }

    void d(boolean z10) {
        this.f1112b.c(z10);
    }
}
