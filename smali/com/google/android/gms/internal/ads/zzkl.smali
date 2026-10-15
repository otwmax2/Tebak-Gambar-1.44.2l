###### Class com.google.android.gms.internal.ads.zzkl (com.google.android.gms.internal.ads.zzkl)
.class final Lcom/google/android/gms/internal/ads/zzkl;
.super Lcom/google/android/gms/internal/ads/zzgs;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final synthetic o:I


# instance fields
.field private final h:I

.field private final i:I

.field private final j:[I

.field private final k:[I

.field private final l:[Lcom/google/android/gms/internal/ads/zzcn;

.field private final m:[Ljava/lang/Object;

.field private final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzum;[B)V
    .registers 8

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(ZLcom/google/android/gms/internal/ads/zzum;[B)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->j:[I

    .line 4
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->k:[I

    .line 5
    new-array v0, p2, [Lcom/google/android/gms/internal/ads/zzcn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->m:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    .line 7
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->n:Ljava/util/HashMap;

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzjv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjv;->zza()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->k:[I

    .line 10
    aput p3, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->j:[I

    .line 11
    aput p2, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 12
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 13
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->m:[Ljava/lang/Object;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjv;->zzb()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->n:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->m:[Ljava/lang/Object;

    .line 15
    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_26

    :cond_6d
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->h:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->i:I

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->i:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->h:I

    return v0
.end method

.method protected final p(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final q(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->j:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzew;->N([IIZZ)I

    move-result p1

    return p1
.end method

.method protected final r(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->k:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzew;->N([IIZZ)I

    move-result p1

    return p1
.end method

.method protected final s(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->j:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final t(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->k:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final u(I)Lcom/google/android/gms/internal/ads/zzcn;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final v(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->m:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final y()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
