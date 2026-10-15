###### Class com.google.android.gms.internal.ads.zzgwg (com.google.android.gms.internal.ads.zzgwg)
.class public Lcom/google/android/gms/internal/ads/zzgwg;
.super Lcom/google/android/gms/internal/ads/zzgwj;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamb;


# instance fields
.field w:Lcom/google/android/gms/internal/ads/zzamc;

.field protected final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwj;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwg;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzgwk;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzaly;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwj;->p:Lcom/google/android/gms/internal/ads/zzgwk;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgwj;->r:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwk;->D(J)V

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgwj;->s:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgwj;->o:Lcom/google/android/gms/internal/ads/zzaly;

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzamc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwg;->w:Lcom/google/android/gms/internal/ads/zzamc;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwg;->x:Ljava/lang/String;

    return-object v0
.end method
