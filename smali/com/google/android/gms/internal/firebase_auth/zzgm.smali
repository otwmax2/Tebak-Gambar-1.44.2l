###### Class com.google.android.gms.internal.firebase_auth.zzgm (com.google.android.gms.internal.firebase_auth.zzgm)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzgm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzgn<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzgm<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjq;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgm;->f()Lcom/google/android/gms/internal/firebase_auth/zzgm;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Lcom/google/android/gms/internal/firebase_auth/zzgm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method protected abstract g(Lcom/google/android/gms/internal/firebase_auth/zzgn;)Lcom/google/android/gms/internal/firebase_auth/zzgm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic q1(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzjp;->a()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzgn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgm;->g(Lcom/google/android/gms/internal/firebase_auth/zzgn;)Lcom/google/android/gms/internal/firebase_auth/zzgm;

    move-result-object p1

    return-object p1

    .line 3
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
