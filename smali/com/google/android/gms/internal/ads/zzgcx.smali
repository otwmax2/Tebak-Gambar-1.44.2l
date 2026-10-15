###### Class com.google.android.gms.internal.ads.zzgcx (com.google.android.gms.internal.ads.zzgcx)
.class public final Lcom/google/android/gms/internal/ads/zzgcx;
.super Lcom/google/android/gms/internal/ads/zzfwu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgea;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgea;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgea;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgcx;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgcx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgld;->L()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgld;->L()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgld;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgld;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgld;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgld;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x1

    return p1

    :cond_54
    return v1
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgea;->d()Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgld;->N()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgcx;->a:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgea;->b()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgld;->L()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    if-eq v2, v0, :cond_34

    const/4 v0, 0x3

    if-eq v2, v0, :cond_31

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2e

    const-string v0, "UNKNOWN"

    goto :goto_39

    :cond_2e
    const-string v0, "CRUNCHY"

    goto :goto_39

    :cond_31
    const-string v0, "RAW"

    goto :goto_39

    :cond_34
    const-string v0, "LEGACY"

    goto :goto_39

    :cond_37
    const-string v0, "TINK"

    :goto_39
    aput-object v0, v1, v3

    const-string v0, "(typeUrl=%s, outputPrefixType=%s)"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
