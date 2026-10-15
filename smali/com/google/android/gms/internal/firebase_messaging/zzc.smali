###### Class com.google.android.gms.internal.firebase_messaging.zzc (com.google.android.gms.internal.firebase_messaging.zzc)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lcom/google/android/gms/internal/firebase_messaging/zze;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/firebase_messaging/zzc;

.field private static final b:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->a:Lcom/google/android/gms/internal/firebase_messaging/zzc;

    const-string v0, "messagingClientEventExtension"

    .line 1
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->b:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_messaging/zze;

    check-cast p2, Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->b:Ld6/c;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_messaging/zze;->b()Ls6/b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method
