###### Class com.google.android.gms.internal.drive.zzam (com.google.android.gms.internal.drive.zzam)
.class abstract Lcom/google/android/gms/internal/drive/zzam;
.super Lcom/google/android/gms/internal/drive/zzau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzau<",
        "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/drive/zzal;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    return-object v0
.end method
