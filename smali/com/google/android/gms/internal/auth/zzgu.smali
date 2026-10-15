###### Class com.google.android.gms.internal.auth.zzgu (com.google.android.gms.internal.auth.zzgu)
.class public final Lcom/google/android/gms/internal/auth/zzgu;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/zzfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/auth/zzfa;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/auth/zzfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzfa;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgu;->o:Lcom/google/android/gms/internal/auth/zzfa;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/auth/zzgu;)Lcom/google/android/gms/internal/auth/zzfa;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzgu;->o:Lcom/google/android/gms/internal/auth/zzfa;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/auth/zzfa;
    .registers 1

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgu;->o:Lcom/google/android/gms/internal/auth/zzfa;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzfa;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgu;->o:Lcom/google/android/gms/internal/auth/zzfa;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzez;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzez;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgt;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzgt;-><init>(Lcom/google/android/gms/internal/auth/zzgu;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgs;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzgs;-><init>(Lcom/google/android/gms/internal/auth/zzgu;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgu;->o:Lcom/google/android/gms/internal/auth/zzfa;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
