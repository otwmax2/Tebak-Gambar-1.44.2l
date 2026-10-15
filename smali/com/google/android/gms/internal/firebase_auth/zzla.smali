###### Class com.google.android.gms.internal.firebase_auth.zzla (com.google.android.gms.internal.firebase_auth.zzla)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzla;
.super Ljava/util/AbstractList;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zziy;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zziy;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/firebase_auth/zziy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zziy;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzla;->o:Lcom/google/android/gms/internal/firebase_auth/zziy;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/firebase_auth/zzla;)Lcom/google/android/gms/internal/firebase_auth/zziy;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzla;->o:Lcom/google/android/gms/internal/firebase_auth/zziy;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/firebase_auth/zziy;
    .registers 1

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzla;->o:Lcom/google/android/gms/internal/firebase_auth/zziy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zziy;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzla;->o:Lcom/google/android/gms/internal/firebase_auth/zziy;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzlc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzlc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzla;)V

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

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzld;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzld;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzla;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzla;->o:Lcom/google/android/gms/internal/firebase_auth/zziy;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzla;->o:Lcom/google/android/gms/internal/firebase_auth/zziy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zziy;->z(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
