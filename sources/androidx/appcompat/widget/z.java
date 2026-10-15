package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* JADX INFO: compiled from: AppCompatTextClassifierHelper.java */
/* JADX INFO: loaded from: classes.dex */
final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f1258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextClassifier f1259b;

    /* JADX INFO: compiled from: AppCompatTextClassifierHelper.java */
    private static final class a {
        static TextClassifier a(TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        }
    }

    z(TextView textView) {
        this.f1258a = (TextView) androidx.core.util.h.f(textView);
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f1259b;
        return textClassifier == null ? a.a(this.f1258a) : textClassifier;
    }

    public void b(TextClassifier textClassifier) {
        this.f1259b = textClassifier;
    }
}
