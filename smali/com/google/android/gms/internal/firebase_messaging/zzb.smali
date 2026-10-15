###### Class com.google.android.gms.internal.firebase_messaging.zzb (com.google.android.gms.internal.firebase_messaging.zzb)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Ls6/b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/firebase_messaging/zzb;

.field private static final b:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;->a:Lcom/google/android/gms/internal/firebase_messaging/zzb;

    const-string v0, "messagingClientEvent"

    .line 1
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;->b:Ld6/c;

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
    check-cast p1, Ls6/b;

    check-cast p2, Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzb;->b:Ld6/c;

    .line 2
    invoke-virtual {p1}, Ls6/b;->a()Ls6/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method
