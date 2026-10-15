package com.tebakgambar.model;

import android.content.Context;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.Callable;
import t1.f;
import t1.h;
import y8.v;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class Question {
    public String answer;
    public byte[] answerImageBytes;
    public String id;
    public byte[] imageBytes;
    public String level;
    public String type;

    private int[] generateNewHintPositionsIfNeeded(int[] iArr) {
        if (iArr.length >= getMaxHintLength()) {
            return iArr;
        }
        int[] lockedHintPosition = getLockedHintPosition(iArr);
        int i10 = lockedHintPosition[new Random().nextInt(lockedHintPosition.length)];
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArrCopyOf.length - 1] = i10;
        y.j0(TGApplication.d(), Integer.parseInt(this.id), iArrCopyOf);
        return iArrCopyOf;
    }

    private int[] getLockedHintPosition(int[] iArr) {
        int[] iArr2 = new int[getMaxHintLength() - iArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < this.answer.length(); i11++) {
            if (this.answer.charAt(i11) != ' ' && Arrays.binarySearch(iArr, i11) < 0) {
                iArr2[i10] = i11;
                i10++;
            }
        }
        return iArr2;
    }

    private int getMaxHintLength() {
        return this.answer.replaceAll(" ", BuildConfig.FLAVOR).length();
    }

    public static h<Question> getQuestion(final Context context, final int i10, final String str, final t1.c cVar) {
        return QuestionSavedData.TYPE_RECEH.equals(str) ? getQuestion(context, i10, "jawabanreceh", cVar).z(new f() { // from class: com.tebakgambar.model.b
            @Override // t1.f
            public final Object a(h hVar) {
                return Question.lambda$getQuestion$1(context, i10, cVar, hVar);
            }
        }) : h.e(new Callable() { // from class: com.tebakgambar.model.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Question.lambda$getQuestion$2(i10, str, context);
            }
        }, cVar);
    }

    private static InputStream getQuestionInputStream(Context context, String str) throws IOException {
        File fileM = y8.h.m(context, str);
        if (fileM.exists()) {
            return new FileInputStream(fileM);
        }
        return context.getResources().getAssets().open("level/" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h lambda$getQuestion$0(byte[] bArr, h hVar) throws Exception {
        Question question = (Question) hVar.s();
        question.answerImageBytes = bArr;
        return h.q(question);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h lambda$getQuestion$1(Context context, int i10, t1.c cVar, h hVar) throws Exception {
        final byte[] bArr = ((Question) hVar.s()).imageBytes;
        return getQuestion(context, i10, "soalreceh", cVar).z(new f() { // from class: com.tebakgambar.model.c
            @Override // t1.f
            public final Object a(h hVar2) {
                return Question.lambda$getQuestion$0(bArr, hVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ com.tebakgambar.model.Question lambda$getQuestion$2(int r11, java.lang.String r12, android.content.Context r13) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 339
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tebakgambar.model.Question.lambda$getQuestion$2(int, java.lang.String, android.content.Context):com.tebakgambar.model.Question");
    }

    public void clearHint() {
        y.j(TGApplication.d(), Integer.parseInt(this.id));
    }

    public String getHint() {
        int[] iArrZ = y.z(TGApplication.d(), Integer.parseInt(this.id));
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < this.answer.length(); i10++) {
            if (Arrays.binarySearch(iArrZ, i10) >= 0 || this.answer.charAt(i10) == ' ') {
                sb.append(this.answer.charAt(i10));
            } else {
                sb.append("_");
            }
            if (i10 != this.answer.length() - 1) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    public String getHintAndUnlock() {
        int[] iArrGenerateNewHintPositionsIfNeeded = generateNewHintPositionsIfNeeded(y.z(TGApplication.d(), Integer.parseInt(this.id)));
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < this.answer.length(); i10++) {
            if (Arrays.binarySearch(iArrGenerateNewHintPositionsIfNeeded, i10) >= 0 || this.answer.charAt(i10) == ' ') {
                sb.append(this.answer.charAt(i10));
            } else {
                sb.append("_");
            }
            if (i10 != this.answer.length() - 1) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    public v getSize(Context context) {
        int iL;
        int iL2 = (int) y.l(context, Float.valueOf(y.u(context, Integer.valueOf(R.dimen.size_question_biasa_width))));
        if (QuestionSavedData.TYPE_RAJA.equals(this.type)) {
            iL = (int) y.l(context, Float.valueOf(y.u(context, Integer.valueOf(R.dimen.size_question_raja_height))));
        } else {
            iL = (context.getResources().getDisplayMetrics().densityDpi == 480 ? 100 : 0) + ((int) y.l(context, Float.valueOf(y.u(context, Integer.valueOf(R.dimen.size_question_biasa_height)))));
        }
        return new v(iL2, iL);
    }

    public boolean isAllHintUnlocked() {
        return y.z(TGApplication.d(), Integer.parseInt(this.id)).length >= getMaxHintLength();
    }

    public boolean isNoHintUnlocked() {
        return y.z(TGApplication.d(), Integer.parseInt(this.id)).length == 0;
    }
}
