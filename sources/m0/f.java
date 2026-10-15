package m0;

import android.os.Build;
import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: compiled from: EmojiTextViewHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f32100a;

    /* JADX INFO: compiled from: EmojiTextViewHelper.java */
    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f32101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f32102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f32103c = true;

        a(TextView textView) {
            this.f32101a = textView;
            this.f32102b = new d(textView);
        }

        private InputFilter[] d(InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.f32102b) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.f32102b;
            return inputFilterArr2;
        }

        private SparseArray<InputFilter> e(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i10 = 0; i10 < inputFilterArr.length; i10++) {
                if (inputFilterArr[i10] instanceof d) {
                    sparseArray.put(i10, inputFilterArr[i10]);
                }
            }
            return sparseArray;
        }

        private InputFilter[] f(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArrayE = e(inputFilterArr);
            if (sparseArrayE.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArrayE.size()];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (sparseArrayE.indexOfKey(i11) < 0) {
                    inputFilterArr2[i10] = inputFilterArr[i11];
                    i10++;
                }
            }
            return inputFilterArr2;
        }

        private TransformationMethod h(TransformationMethod transformationMethod) {
            return transformationMethod instanceof h ? ((h) transformationMethod).a() : transformationMethod;
        }

        private void i() {
            this.f32101a.setFilters(a(this.f32101a.getFilters()));
        }

        private TransformationMethod k(TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof h) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new h(transformationMethod);
        }

        @Override // m0.f.b
        InputFilter[] a(InputFilter[] inputFilterArr) {
            return !this.f32103c ? f(inputFilterArr) : d(inputFilterArr);
        }

        @Override // m0.f.b
        void b(boolean z10) {
            if (z10) {
                j();
            }
        }

        @Override // m0.f.b
        void c(boolean z10) {
            this.f32103c = z10;
            j();
            i();
        }

        void g(boolean z10) {
            this.f32103c = z10;
        }

        void j() {
            this.f32101a.setTransformationMethod(l(this.f32101a.getTransformationMethod()));
        }

        TransformationMethod l(TransformationMethod transformationMethod) {
            return this.f32103c ? k(transformationMethod) : h(transformationMethod);
        }
    }

    /* JADX INFO: compiled from: EmojiTextViewHelper.java */
    static class b {
        b() {
        }

        InputFilter[] a(InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        void b(boolean z10) {
        }

        void c(boolean z10) {
        }
    }

    /* JADX INFO: compiled from: EmojiTextViewHelper.java */
    private static class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a f32104a;

        c(TextView textView) {
            this.f32104a = new a(textView);
        }

        private boolean d() {
            return !androidx.emoji2.text.d.h();
        }

        @Override // m0.f.b
        InputFilter[] a(InputFilter[] inputFilterArr) {
            return d() ? inputFilterArr : this.f32104a.a(inputFilterArr);
        }

        @Override // m0.f.b
        void b(boolean z10) {
            if (d()) {
                return;
            }
            this.f32104a.b(z10);
        }

        @Override // m0.f.b
        void c(boolean z10) {
            if (d()) {
                this.f32104a.g(z10);
            } else {
                this.f32104a.c(z10);
            }
        }
    }

    public f(TextView textView, boolean z10) {
        androidx.core.util.h.g(textView, "textView cannot be null");
        if (Build.VERSION.SDK_INT < 19) {
            this.f32100a = new b();
        } else if (z10) {
            this.f32100a = new a(textView);
        } else {
            this.f32100a = new c(textView);
        }
    }

    public InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f32100a.a(inputFilterArr);
    }

    public void b(boolean z10) {
        this.f32100a.b(z10);
    }

    public void c(boolean z10) {
        this.f32100a.c(z10);
    }
}
