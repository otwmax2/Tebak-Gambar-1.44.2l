###### Class com.google.android.gms.internal.drive.zzbs (com.google.android.gms.internal.drive.zzbs)
.class public final Lcom/google/android/gms/internal/drive/zzbs;
.super Lcom/google/android/gms/internal/drive/zzdp;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzdp;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method static b(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzk;)I
    .registers 2

    if-nez p0, :cond_e

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->a()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_1a

    :cond_c
    const/4 p0, 0x1

    goto :goto_1a

    .line 2
    :cond_e
    invoke-interface {p0}, Lcom/google/android/gms/drive/DriveContents;->g()Lcom/google/android/gms/drive/Contents;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Contents;->X3()I

    move-result p1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/drive/DriveContents;->h()V

    move p0, p1

    :goto_1a
    return p0
.end method
