###### Class com.google.android.gms.internal.ads.zzfxt (com.google.android.gms.internal.ads.zzfxt)
.class public final Lcom/google/android/gms/internal/ads/zzfxt;
.super Lcom/google/android/gms/internal/ads/zzgcu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxr;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgny;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfxr;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzghl;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzfxt;Lcom/google/android/gms/internal/ads/zzghr;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxt;->m(Lcom/google/android/gms/internal/ads/zzghr;)V

    return-void
.end method

.method public static final l(Lcom/google/android/gms/internal/ads/zzghl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgog;->a(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->N()Lcom/google/android/gms/internal/ads/zzghr;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfxt;->m(Lcom/google/android/gms/internal/ads/zzghr;)V

    return-void
.end method

.method private static final m(Lcom/google/android/gms/internal/ads/zzghr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghr;->I()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghr;->I()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_11

    return-void

    .line 2
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzgho;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfxs;-><init>(Lcom/google/android/gms/internal/ads/zzfxt;Ljava/lang/Class;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzghl;->M(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxt;->l(Lcom/google/android/gms/internal/ads/zzghl;)V

    return-void
.end method
