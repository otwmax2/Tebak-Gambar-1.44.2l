package com.facebook.bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: AggregateException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AggregateException extends Exception {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 1;
    private final List<Throwable> innerThrowables;

    /* JADX INFO: compiled from: AggregateException.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    public AggregateException(String str, List<? extends Throwable> list) {
        super(str, (list == null || !(list.isEmpty() ^ true)) ? null : list.get(0));
        List<Throwable> listUnmodifiableList = Collections.unmodifiableList(list == null ? i9.l.e() : list);
        t9.m.d(listUnmodifiableList, "unmodifiableList(innerThrowables ?: emptyList())");
        this.innerThrowables = listUnmodifiableList;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        t9.m.e(printStream, "err");
        super.printStackTrace(printStream);
        int i10 = -1;
        for (Throwable th : this.innerThrowables) {
            printStream.append("\n");
            printStream.append("  Inner throwable #");
            i10++;
            printStream.append((CharSequence) String.valueOf(i10));
            printStream.append(": ");
            if (th != null) {
                th.printStackTrace(printStream);
            }
            printStream.append("\n");
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        t9.m.e(printWriter, "err");
        super.printStackTrace(printWriter);
        int i10 = -1;
        for (Throwable th : this.innerThrowables) {
            printWriter.append("\n");
            printWriter.append("  Inner throwable #");
            i10++;
            printWriter.append((CharSequence) String.valueOf(i10));
            printWriter.append(": ");
            if (th != null) {
                th.printStackTrace(printWriter);
            }
            printWriter.append("\n");
        }
    }
}
