###### Class com.google.android.gms.internal.drive.zzf (com.google.android.gms.internal.drive.zzf)
.class public final Lcom/google/android/gms/internal/drive/zzf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/drive/DriveId;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzh;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzh;->p:Lcom/google/android/gms/drive/DriveId;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzh;->o:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 6
    iget p1, p1, Lcom/google/android/gms/internal/drive/zzh;->q:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/drive/zzf;

    if-eq v1, v2, :cond_c

    goto :goto_29

    :cond_c
    const/4 v1, 0x1

    if-ne p1, p0, :cond_10

    return v1

    .line 2
    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/drive/zzf;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/drive/zzf;->b:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzf;->c:I

    if-ne v2, p1, :cond_29

    return v1

    :cond_29
    :goto_29
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FileTransferState[TransferType: %d, DriveId: %s, status: %d]"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
