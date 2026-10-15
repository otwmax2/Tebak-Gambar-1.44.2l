###### Class com.google.android.gms.internal.ads.zzfxs (com.google.android.gms.internal.ads.zzfxs)
.class final Lcom/google/android/gms/internal/ads/zzfxs;
.super Lcom/google/android/gms/internal/ads/zzgct;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfxt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxt;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxs;->b:Lcom/google/android/gms/internal/ads/zzfxt;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgct;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/zzgho;)Lcom/google/android/gms/internal/ads/zzghl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghl;->J()Lcom/google/android/gms/internal/ads/zzghk;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgho;->N()Lcom/google/android/gms/internal/ads/zzghr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghk;->p(Lcom/google/android/gms/internal/ads/zzghr;)Lcom/google/android/gms/internal/ads/zzghk;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgho;->I()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoe;->a(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzghk;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzghk;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzghk;->q(I)Lcom/google/android/gms/internal/ads/zzghk;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzghl;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxs;->g(Lcom/google/android/gms/internal/ads/zzgho;)Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgho;->M(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfxs;->f(Lcom/google/android/gms/internal/ads/zzgho;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzgho;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgho;->I()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgog;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxs;->b:Lcom/google/android/gms/internal/ads/zzfxt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgho;->N()Lcom/google/android/gms/internal/ads/zzghr;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxt;->k(Lcom/google/android/gms/internal/ads/zzfxt;Lcom/google/android/gms/internal/ads/zzghr;)V

    return-void
.end method
