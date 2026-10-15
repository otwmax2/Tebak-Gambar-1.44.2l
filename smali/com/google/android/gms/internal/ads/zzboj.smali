###### Class com.google.android.gms.internal.ads.zzboj (com.google.android.gms.internal.ads.zzboj)
.class public final Lcom/google/android/gms/internal/ads/zzboj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;

.field private final d:Z

.field private final e:Landroid/location/Location;

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final h:Ljava/util/List;

.field private final i:Z

.field private final j:Ljava/util/Map;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzbdl;Ljava/util/List;ZILjava/lang/String;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->a:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzboj;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzboj;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzboj;->d:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzboj;->f:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzboj;->g:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzboj;->i:Z

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzboj;->k:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->h:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->j:Ljava/util/Map;

    if-eqz p8, :cond_77

    .line 3
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "custom:"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_71

    const-string p3, ":"

    const/4 p4, 0x3

    .line 5
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 6
    array-length p3, p2

    if-ne p3, p4, :cond_29

    const/4 p3, 0x2

    .line 7
    aget-object p4, p2, p3

    const-string p5, "true"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_5d

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->j:Ljava/util/Map;

    .line 8
    aget-object p2, p2, p5

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 9
    :cond_5d
    aget-object p3, p2, p3

    const-string p4, "false"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->j:Ljava/util/Map;

    .line 10
    aget-object p2, p2, p5

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_71
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->h:Ljava/util/List;

    .line 11
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_77
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->g:Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdl;->V3(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->f:I

    return v0
.end method

.method public final c()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->h:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->i:Z

    return v0
.end method

.method public final e()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->d:Z

    return v0
.end method

.method public final g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->g:Lcom/google/android/gms/internal/ads/zzbdl;

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    goto :goto_48

    :cond_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->o:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_30

    const/4 v3, 0x3

    if-eq v2, v3, :cond_24

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1a

    goto :goto_35

    .line 2
    :cond_1a
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->u:Z

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->v:I

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->d(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_24
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->t:Lcom/google/android/gms/ads/internal/client/zzfl;

    if-eqz v2, :cond_30

    new-instance v3, Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v3, v2}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/internal/client/zzfl;)V

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->h(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_30
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->s:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 7
    :goto_35
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->p:Z

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->g(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->q:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->r:Z

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->f(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    :goto_48
    return-object v0
.end method

.method public final i()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->b:I

    return v0
.end method

.method public final zza()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final zzb()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->h:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
