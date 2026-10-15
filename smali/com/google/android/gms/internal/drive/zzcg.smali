###### Class com.google.android.gms.internal.drive.zzcg (com.google.android.gms.internal.drive.zzcg)
.class abstract Lcom/google/android/gms/internal/drive/zzcg;
.super Lcom/google/android/gms/internal/drive/zzau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzau<",
        "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic t:Lcom/google/android/gms/internal/drive/zzcb;


# virtual methods
.method protected synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzcf;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcg;->t:Lcom/google/android/gms/internal/drive/zzcb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/gms/internal/drive/zzcf;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/drive/zzcc;)V

    return-object v0
.end method
