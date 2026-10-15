###### Class com.google.android.gms.internal.firebase_messaging.zzaf (com.google.android.gms.internal.firebase_messaging.zzaf)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzaf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ld6/g;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ld6/c;

.field private final d:Lcom/google/android/gms/internal/firebase_messaging/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_messaging/zzab;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->d:Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-void
.end method

.method private final b()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->a:Z

    return-void

    :cond_8
    new-instance v0, Ld6/b;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Ld6/c;Z)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->c:Ld6/c;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->b:Z

    return-void
.end method

.method public final f(Ljava/lang/String;)Ld6/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->d:Lcom/google/android/gms/internal/firebase_messaging/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->c:Ld6/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->f(Ld6/c;Ljava/lang/Object;Z)Ld6/e;

    return-object p0
.end method

.method public final g(Z)Ld6/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->d:Lcom/google/android/gms/internal/firebase_messaging/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->c:Ld6/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->b:Z

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0
.end method
