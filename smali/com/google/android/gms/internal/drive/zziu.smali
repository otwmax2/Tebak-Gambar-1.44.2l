###### Class com.google.android.gms.internal.drive.zziu (com.google.android.gms.internal.drive.zziu)
.class public abstract Lcom/google/android/gms/internal/drive/zziu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzlr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzit<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/drive/zziu<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/drive/zzlr;"
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
.method public final synthetic X(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlr;
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzls;->a()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zziu;->h(Lcom/google/android/gms/internal/drive/zzit;)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object p1

    return-object p1

    .line 3
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziu;->i()Lcom/google/android/gms/internal/drive/zziu;

    move-result-object v0

    return-object v0
.end method

.method protected abstract h(Lcom/google/android/gms/internal/drive/zzit;)Lcom/google/android/gms/internal/drive/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract i()Lcom/google/android/gms/internal/drive/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
