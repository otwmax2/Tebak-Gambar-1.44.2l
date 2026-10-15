###### Class com.google.android.gms.internal.firebase_auth.zzbn (com.google.android.gms.internal.firebase_auth.zzbn)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzbn;
.super Lcom/google/android/gms/internal/firebase_auth/zzbh;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzbh<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient p:Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbh;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzbs;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbs;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbn;->p:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbn;->m()Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbn;->p:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    :cond_a
    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbh;->g()Lcom/google/android/gms/internal/firebase_auth/zzbv;

    move-result-object v0

    return-object v0
.end method

.method m()Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbh;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->p([Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object v0

    return-object v0
.end method
