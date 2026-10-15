###### Class com.google.android.gms.internal.ads.zzfsf (com.google.android.gms.internal.ads.zzfsf)
.class public final Lcom/google/android/gms/internal/ads/zzfsf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method static a(Ljava/util/Set;)I
    .registers 4

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v1, v2

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public static b(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfnv;)Ljava/util/Set;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_28

    .line 2
    check-cast p0, Ljava/util/SortedSet;

    .line 3
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfsc;

    if-eqz v0, :cond_1c

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfsc;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpk;->p:Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfny;->a(Lcom/google/android/gms/internal/ads/zzfnv;Lcom/google/android/gms/internal/ads/zzfnv;)Lcom/google/android/gms/internal/ads/zzfnv;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfpk;->o:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzfnv;)V

    goto :goto_27

    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzfnv;)V

    :goto_27
    return-object v0

    .line 9
    :cond_28
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfsc;

    if-eqz v0, :cond_3c

    .line 10
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfsc;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpk;->p:Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfny;->a(Lcom/google/android/gms/internal/ads/zzfnv;Lcom/google/android/gms/internal/ads/zzfnv;)Lcom/google/android/gms/internal/ads/zzfnv;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsc;

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfpk;->o:Ljava/util/Collection;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsc;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfnv;)V

    return-object v0

    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsc;

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsc;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfnv;)V

    return-object v0
.end method

.method static c(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 2
    check-cast p1, Ljava/util/Set;

    .line 3
    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1c

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_19} :catch_1c
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_19} :catch_1c

    if-eqz p0, :cond_1c

    return v0

    :catch_1c
    :cond_1c
    return v2
.end method

.method static d(Ljava/util/Set;Ljava/util/Collection;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfrp;

    if-eqz v0, :cond_d

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfrp;->zza()Ljava/util/Set;

    move-result-object p1

    .line 4
    :cond_d
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_36

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 6
    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_20

    :cond_35
    return v0

    .line 9
    :cond_36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsf;->e(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static e(Ljava/util/Set;Ljava/util/Iterator;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    :cond_11
    return v0
.end method
