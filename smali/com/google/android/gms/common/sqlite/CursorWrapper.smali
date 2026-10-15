###### Class com.google.android.gms.common.sqlite.CursorWrapper (com.google.android.gms.common.sqlite.CursorWrapper)
.class public Lcom/google/android/gms/common/sqlite/CursorWrapper;
.super Landroid/database/CursorWrapper;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private o:Landroid/database/AbstractWindowedCursor;


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->o:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractWindowedCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->o:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getWrappedCursor()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->o:Landroid/database/AbstractWindowedCursor;

    return-object v0
.end method

.method public final onMove(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->o:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractWindowedCursor;->onMove(II)Z

    move-result p1

    return p1
.end method
