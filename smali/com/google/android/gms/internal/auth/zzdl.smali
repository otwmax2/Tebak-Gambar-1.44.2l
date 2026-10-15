###### Class com.google.android.gms.internal.auth.zzdl (com.google.android.gms.internal.auth.zzdl)
.class public abstract Lcom/google/android/gms/internal/auth/zzdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzdm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzdl<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzfp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic F2(Lcom/google/android/gms/internal/auth/zzfq;)Lcom/google/android/gms/internal/auth/zzfp;
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzfr;->f()Lcom/google/android/gms/internal/auth/zzfq;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/auth/zzdm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzdl;->d(Lcom/google/android/gms/internal/auth/zzdm;)Lcom/google/android/gms/internal/auth/zzdl;

    move-result-object p1

    return-object p1

    .line 3
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a()Lcom/google/android/gms/internal/auth/zzdl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdl;->a()Lcom/google/android/gms/internal/auth/zzdl;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d(Lcom/google/android/gms/internal/auth/zzdm;)Lcom/google/android/gms/internal/auth/zzdl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method
