###### Class com.google.android.gms.internal.drive.zze (com.google.android.gms.internal.drive.zze)
.class public final Lcom/google/android/gms/internal/drive/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/zzk;


# instance fields
.field private final a:Lcom/google/android/gms/drive/events/zzm;

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzh;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzf;-><init>(Lcom/google/android/gms/internal/drive/zzh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zze;->a:Lcom/google/android/gms/drive/events/zzm;

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/drive/zzh;->r:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zze;->b:J

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/internal/drive/zzh;->s:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zze;->c:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/drive/zze;

    if-eq v1, v2, :cond_c

    goto :goto_2d

    :cond_c
    const/4 v1, 0x1

    if-ne p1, p0, :cond_10

    return v1

    .line 2
    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/drive/zze;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zze;->a:Lcom/google/android/gms/drive/events/zzm;

    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zze;->a:Lcom/google/android/gms/drive/events/zzm;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-wide v2, p0, Lcom/google/android/gms/internal/drive/zze;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/drive/zze;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2d

    iget-wide v2, p0, Lcom/google/android/gms/internal/drive/zze;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/drive/zze;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2d

    return v1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zze;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zze;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zze;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zze;->a:Lcom/google/android/gms/drive/events/zzm;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/internal/drive/zze;->b:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/internal/drive/zze;->c:J

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "FileTransferProgress[FileTransferState: %s, BytesTransferred: %d, TotalBytes: %d]"

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
