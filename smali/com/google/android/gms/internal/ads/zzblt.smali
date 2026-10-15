###### Class com.google.android.gms.internal.ads.zzblt (com.google.android.gms.internal.ads.zzblt)
.class public final Lcom/google/android/gms/internal/ads/zzblt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkk;
.implements Lcom/google/android/gms/internal/ads/zzbls;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzbls;

.field private final p:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbls;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblt;->o:Lcom/google/android/gms/internal/ads/zzbls;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblt;->p:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final U0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->o:Lcom/google/android/gms/internal/ads/zzbls;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbls;->U0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->p:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic Z0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkj;->d(Lcom/google/android/gms/internal/ads/zzbkk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->p:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbhp;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unregistering eventhandler: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzblt;->o:Lcom/google/android/gms/internal/ads/zzbls;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbhp;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbls;->U0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    goto :goto_6

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->p:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final c1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->o:Lcom/google/android/gms/internal/ads/zzbls;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbls;->c1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->p:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2
    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkj;->c(Lcom/google/android/gms/internal/ads/zzbkk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->o:Lcom/google/android/gms/internal/ads/zzbls;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkv;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic v0(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkj;->a(Lcom/google/android/gms/internal/ads/zzbkk;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic w(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkj;->b(Lcom/google/android/gms/internal/ads/zzbkk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
