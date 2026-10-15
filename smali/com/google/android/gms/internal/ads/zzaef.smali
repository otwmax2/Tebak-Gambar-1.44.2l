###### Class com.google.android.gms.internal.ads.zzaef (com.google.android.gms.internal.ads.zzaef)
.class public final Lcom/google/android/gms/internal/ads/zzaef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbp;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final o:J

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaed;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzaee;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    return-void
.end method


# virtual methods
.method public final synthetic d2(Lcom/google/android/gms/internal/ads/zzbk;)V
    .registers 2

    return-void
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzaef;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3b

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaef;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3b

    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public final hashCode()I
    .registers 14

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    ushr-long v9, v7, v2

    xor-long/2addr v7, v9

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    ushr-long v11, v9, v2

    xor-long/2addr v9, v11

    long-to-int v1, v0

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v0, v5

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v0, v7

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v0, v9

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 13

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Motion photo metadata: photoStartPosition="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", photoSize="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", photoPresentationTimestampUs="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", videoStartPosition="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", videoSize="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->p:J

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->q:J

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->s:J

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
