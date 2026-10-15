###### Class com.google.android.gms.internal.ads.zzcen (com.google.android.gms.internal.ads.zzcen)
.class final Lcom/google/android/gms/internal/ads/zzcen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzcep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcep;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcen;->d:Lcom/google/android/gms/internal/ads/zzcep;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcen;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcen;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcen;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcen;->c:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to parse gmsg params for: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcen;->d:Lcom/google/android/gms/internal/ads/zzcep;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcen;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcen;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcep;->O(Lcom/google/android/gms/internal/ads/zzcep;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
