###### Class com.google.android.gms.internal.measurement.zzmq (com.google.android.gms.internal.measurement.zzmq)
.class public final Lcom/google/android/gms/internal/measurement/zzmq;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/zzkr;


# instance fields
.field private final o:Lcom/google/android/gms/internal/measurement/zzkr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzkr;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmq;->o:Lcom/google/android/gms/internal/measurement/zzkr;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/measurement/zzmq;)Lcom/google/android/gms/internal/measurement/zzkr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmq;->o:Lcom/google/android/gms/internal/measurement/zzkr;

    return-object p0
.end method


# virtual methods
.method public final G(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmq;->o:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkr;->G(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final I1(Lcom/google/android/gms/internal/measurement/zzjb;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/zzkr;
    .registers 1

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmq;->o:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkr;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmq;->o:Lcom/google/android/gms/internal/measurement/zzkr;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkq;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkq;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmp;-><init>(Lcom/google/android/gms/internal/measurement/zzmq;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmo;-><init>(Lcom/google/android/gms/internal/measurement/zzmq;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmq;->o:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
