###### Class com.google.android.gms.internal.ads.zzgtl (com.google.android.gms.internal.ads.zzgtl)
.class public final Lcom/google/android/gms/internal/ads/zzgtl;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/ads/zzgre;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzgre;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgre;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtl;->o:Lcom/google/android/gms/internal/ads/zzgre;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgtl;)Lcom/google/android/gms/internal/ads/zzgre;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgtl;->o:Lcom/google/android/gms/internal/ads/zzgre;

    return-object p0
.end method


# virtual methods
.method public final G(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtl;->o:Lcom/google/android/gms/internal/ads/zzgre;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgre;->G(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzgre;
    .registers 1

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtl;->o:Lcom/google/android/gms/internal/ads/zzgre;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgre;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtl;->o:Lcom/google/android/gms/internal/ads/zzgre;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgrd;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgrd;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgtk;-><init>(Lcom/google/android/gms/internal/ads/zzgtl;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgtj;-><init>(Lcom/google/android/gms/internal/ads/zzgtl;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtl;->o:Lcom/google/android/gms/internal/ads/zzgre;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
