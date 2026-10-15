###### Class com.google.android.gms.internal.ads.zzdgc (com.google.android.gms.internal.ads.zzdgc)
.class final Lcom/google/android/gms/internal/ads/zzdgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzdgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdgd;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->b:Lcom/google/android/gms/internal/ads/zzdgd;

    const-string p1, "Google"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->b:Lcom/google/android/gms/internal/ads/zzdgd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgd;->O(Lcom/google/android/gms/internal/ads/zzdgd;)Lcom/google/android/gms/internal/ads/zzdgi;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgi;->s(Lcom/google/android/gms/internal/ads/zzcei;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->b:Lcom/google/android/gms/internal/ads/zzdgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdgd;->Y(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->b:Lcom/google/android/gms/internal/ads/zzdgd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgd;->Q(Lcom/google/android/gms/internal/ads/zzdgd;)Lcom/google/android/gms/internal/ads/zzfvc;

    move-result-object p1

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfvc;->h(Ljava/lang/Object;)Z

    return-void
.end method
