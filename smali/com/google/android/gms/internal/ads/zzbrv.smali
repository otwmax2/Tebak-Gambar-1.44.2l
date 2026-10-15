###### Class com.google.android.gms.internal.ads.zzbrv (com.google.android.gms.internal.ads.zzbrv)
.class final Lcom/google/android/gms/internal/ads/zzbrv;
.super Lcom/google/android/gms/internal/ads/zzbrq;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;


# virtual methods
.method public final q3(Ljava/util/List;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrv;->o:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->b(Landroid/net/Uri;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrv;->o:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->a(Ljava/lang/String;)V

    return-void
.end method
