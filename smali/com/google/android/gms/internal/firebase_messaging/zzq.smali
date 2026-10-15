###### Class com.google.android.gms.internal.firebase_messaging.zzq (com.google.android.gms.internal.firebase_messaging.zzq)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzq;
.super Lcom/google/android/gms/internal/firebase_messaging/zzn;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_messaging/zzp;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzn;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzp;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzq;->a:Lcom/google/android/gms/internal/firebase_messaging/zzp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-eq p2, p1, :cond_d

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzq;->a:Lcom/google/android/gms/internal/firebase_messaging/zzp;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzp;->a(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    .line 4
    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
