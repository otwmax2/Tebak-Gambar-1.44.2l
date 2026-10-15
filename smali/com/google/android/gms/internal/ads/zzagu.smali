###### Class com.google.android.gms.internal.ads.zzagu (com.google.android.gms.internal.ads.zzagu)
.class final Lcom/google/android/gms/internal/ads/zzagu;
.super Lcom/google/android/gms/internal/ads/zzagy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final o:[B

.field private static final p:[B


# instance fields
.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/google/android/gms/internal/ads/zzagu;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagu;->p:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1a
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagy;-><init>()V

    return-void
.end method

.method public static j(Lcom/google/android/gms/internal/ads/zzen;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagu;->o:[B

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzagu;->k(Lcom/google/android/gms/internal/ads/zzen;[B)Z

    move-result p0

    return p0
.end method

.method private static k(Lcom/google/android/gms/internal/ads/zzen;[B)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v0

    new-array v3, v2, [B

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 3
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/zzen;)J
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->b([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzagy;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final b(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzagy;->b(Z)V

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzagu;->n:Z

    :cond_8
    return-void
.end method

.method protected final c(Lcom/google/android/gms/internal/ads/zzen;JLcom/google/android/gms/internal/ads/zzagv;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzagu;->o:[B

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzagu;->k(Lcom/google/android/gms/internal/ads/zzen;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_41

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p1

    .line 2
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 3
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->c([B)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz v0, :cond_24

    return p3

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v1, "audio/opus"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    const p2, 0xbb80

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return p3

    :cond_41
    sget-object p2, Lcom/google/android/gms/internal/ads/zzagu;->p:[B

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzagu;->k(Lcom/google/android/gms/internal/ads/zzen;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_84

    .line 12
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzagu;->n:Z

    if-eqz p2, :cond_54

    return p3

    :cond_54
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzagu;->n:Z

    const/16 p2, 0x8

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 14
    invoke-static {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzabh;->c(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzabe;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzabe;->b:[Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->t([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabh;->b(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object p1

    if-nez p1, :cond_6c

    return p3

    .line 16
    :cond_6c
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p2

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->j:Lcom/google/android/gms/internal/ads/zzbq;

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbq;->w(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->m(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzad;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return p3

    .line 20
    :cond_84
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
