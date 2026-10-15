###### Class com.google.android.gms.internal.ads.zzpc (com.google.android.gms.internal.ads.zzpc)
.class final Lcom/google/android/gms/internal/ads/zzpc;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzpf;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzpd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpd;Lcom/google/android/gms/internal/ads/zzpf;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->b:Lcom/google/android/gms/internal/ads/zzpd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->a:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->b:Lcom/google/android/gms/internal/ads/zzpd;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzpd;->c:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzpf;->i(Lcom/google/android/gms/internal/ads/zzpf;)Landroid/media/AudioTrack;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->b:Lcom/google/android/gms/internal/ads/zzpd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpd;->c:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->l(Lcom/google/android/gms/internal/ads/zzpf;)Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzof;->zzb()V

    :cond_26
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->b:Lcom/google/android/gms/internal/ads/zzpd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpd;->c:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpf;->i(Lcom/google/android/gms/internal/ads/zzpf;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->b:Lcom/google/android/gms/internal/ads/zzpd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpd;->c:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->l(Lcom/google/android/gms/internal/ads/zzpf;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzof;->zzb()V

    :cond_26
    return-void
.end method
