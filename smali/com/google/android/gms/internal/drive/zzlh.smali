###### Class com.google.android.gms.internal.drive.zzlh (com.google.android.gms.internal.drive.zzlh)
.class final Lcom/google/android/gms/internal/drive/zzlh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzlp;


# instance fields
.field private a:[Lcom/google/android/gms/internal/drive/zzlp;


# direct methods
.method varargs constructor <init>([Lcom/google/android/gms/internal/drive/zzlp;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzlh;->a:[Lcom/google/android/gms/internal/drive/zzlp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlh;->a:[Lcom/google/android/gms/internal/drive/zzlp;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/drive/zzlp;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzlo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/gms/internal/drive/zzlo;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlh;->a:[Lcom/google/android/gms/internal/drive/zzlp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/drive/zzlp;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/drive/zzlp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzlo;

    move-result-object p1

    return-object p1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No factory is available for message type: "

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_29
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_33

    :goto_32
    throw v0

    :goto_33
    goto :goto_32
.end method
