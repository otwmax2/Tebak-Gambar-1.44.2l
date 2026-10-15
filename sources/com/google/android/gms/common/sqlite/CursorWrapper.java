package com.google.android.gms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class CursorWrapper extends android.database.CursorWrapper implements CrossProcessCursor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AbstractWindowedCursor f7616o;

    @Override // android.database.CrossProcessCursor
    @KeepForSdk
    public void fillWindow(int i10, CursorWindow cursorWindow) {
        this.f7616o.fillWindow(i10, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    @KeepForSdk
    public CursorWindow getWindow() {
        return this.f7616o.getWindow();
    }

    @Override // android.database.CursorWrapper
    public final /* synthetic */ Cursor getWrappedCursor() {
        return this.f7616o;
    }

    @Override // android.database.CrossProcessCursor
    public final boolean onMove(int i10, int i11) {
        return this.f7616o.onMove(i10, i11);
    }
}
