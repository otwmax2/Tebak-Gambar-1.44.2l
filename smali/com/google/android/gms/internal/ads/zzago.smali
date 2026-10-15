###### Class com.google.android.gms.internal.ads.zzago (com.google.android.gms.internal.ads.zzago)
.class final Lcom/google/android/gms/internal/ads/zzago;
.super Lcom/google/android/gms/internal/ads/zzagy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private n:Lcom/google/android/gms/internal/ads/zzaah;

.field private o:Lcom/google/android/gms/internal/ads/zzagn;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagy;-><init>()V

    return-void
.end method

.method private static j([B)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/zzen;)J
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzago;->j([B)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eq v0, v2, :cond_1c

    if-ne v0, v3, :cond_22

    const/4 v0, 0x7

    .line 3
    :cond_1c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->C()J

    .line 5
    :cond_22
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaad;->a(Lcom/google/android/gms/internal/ads/zzen;I)I

    move-result v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected final b(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzagy;->b(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzago;->n:Lcom/google/android/gms/internal/ads/zzaah;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzago;->o:Lcom/google/android/gms/internal/ads/zzagn;

    :cond_a
    return-void
.end method

.method protected final c(Lcom/google/android/gms/internal/ads/zzen;JLcom/google/android/gms/internal/ads/zzagv;)Z
    .registers 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzago;->n:Lcom/google/android/gms/internal/ads/zzaah;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaah;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzaah;-><init>([BI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzago;->n:Lcom/google/android/gms/internal/ads/zzaah;

    const/16 p3, 0x9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p1

    .line 2
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzaah;->c([BLcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return v2

    :cond_24
    const/4 v3, 0x0

    .line 4
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3e

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaae;->b(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaag;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaah;->f(Lcom/google/android/gms/internal/ads/zzaag;)Lcom/google/android/gms/internal/ads/zzaah;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzago;->n:Lcom/google/android/gms/internal/ads/zzaah;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzagn;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzagn;-><init>(Lcom/google/android/gms/internal/ads/zzaah;Lcom/google/android/gms/internal/ads/zzaag;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzago;->o:Lcom/google/android/gms/internal/ads/zzagn;

    return v2

    .line 6
    :cond_3e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzago;->j([B)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzago;->o:Lcom/google/android/gms/internal/ads/zzagn;

    if-eqz p1, :cond_4f

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzagn;->d(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzago;->o:Lcom/google/android/gms/internal/ads/zzagn;

    .line 8
    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzagv;->b:Lcom/google/android/gms/internal/ads/zzagt;

    .line 9
    :cond_4f
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_55
    return v2
.end method
