###### Class com.google.android.gms.internal.ads.zzgwp (com.google.android.gms.internal.ads.zzgwp)
.class public final Lcom/google/android/gms/internal/ads/zzgwp;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final q:Lcom/google/android/gms/internal/ads/zzgwq;


# instance fields
.field final o:Ljava/util/List;

.field final p:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgwp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwq;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgwq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwp;->q:Lcom/google/android/gms/internal/ads/zzgwq;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Iterator;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwp;->o:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwp;->p:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->o:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->p:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwp;->p:Ljava/util/Iterator;

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwp;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_27
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 8
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwo;-><init>(Lcom/google/android/gms/internal/ads/zzgwp;)V

    return-object v0
.end method

.method public final size()I
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwp;->q:Lcom/google/android/gms/internal/ads/zzgwq;

    const-string v1, "potentially expensive size() call"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwq;->a(Ljava/lang/String;)V

    const-string v1, "blowup running"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwq;->a(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->p:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwp;->p:Ljava/util/Iterator;

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwp;->o:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
