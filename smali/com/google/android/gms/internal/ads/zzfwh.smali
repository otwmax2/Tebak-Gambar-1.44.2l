###### Class com.google.android.gms.internal.ads.zzfwh (com.google.android.gms.internal.ads.zzfwh)
.class public final Lcom/google/android/gms/internal/ads/zzfwh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgld;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgld;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwh;->a:Lcom/google/android/gms/internal/ads/zzgld;

    return-void
.end method

.method public static e(Ljava/lang/String;[BI)Lcom/google/android/gms/internal/ads/zzfwh;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgld;->I()Lcom/google/android/gms/internal/ads/zzglc;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzglc;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzglc;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzglc;->q(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzglc;

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_1d

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1a

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->s:Lcom/google/android/gms/internal/ads/zzgme;

    goto :goto_1f

    :cond_1a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->r:Lcom/google/android/gms/internal/ads/zzgme;

    goto :goto_1f

    :cond_1d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->q:Lcom/google/android/gms/internal/ads/zzgme;

    .line 5
    :goto_1f
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzglc;->o(Lcom/google/android/gms/internal/ads/zzgme;)Lcom/google/android/gms/internal/ads/zzglc;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgld;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfwh;-><init>(Lcom/google/android/gms/internal/ads/zzgld;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/zzgld;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwh;->a:Lcom/google/android/gms/internal/ads/zzgld;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwh;->a:Lcom/google/android/gms/internal/ads/zzgld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgld;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwh;->a:Lcom/google/android/gms/internal/ads/zzgld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgld;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwh;->a:Lcom/google/android/gms/internal/ads/zzgld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgld;->L()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    return v1

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown output prefix type"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return v1
.end method
