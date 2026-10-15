###### Class com.google.android.gms.internal.ads.zzfzi (com.google.android.gms.internal.ads.zzfzi)
.class public final Lcom/google/android/gms/internal/ads/zzfzi;
.super Lcom/google/android/gms/internal/ads/zzgcu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzg;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzgij;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method public static k(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzi;->m()Z

    move-result p0

    if-eqz p0, :cond_12

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzi;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzi;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzs;->a()V

    :cond_12
    return-void
.end method

.method static bridge synthetic l(II)Lcom/google/android/gms/internal/ads/zzgcs;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgim;->J()Lcom/google/android/gms/internal/ads/zzgil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgil;->o(I)Lcom/google/android/gms/internal/ads/zzgil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgim;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static m()Z
    .registers 1

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzgim;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>(Lcom/google/android/gms/internal/ads/zzfzi;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzgkx;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkx;->q:Lcom/google/android/gms/internal/ads/zzgkx;

    return-object v0
.end method

.method public final synthetic c(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgij;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgij;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    return-object v0
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgij;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgij;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgij;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgog;->a(I)V

    return-void
.end method
