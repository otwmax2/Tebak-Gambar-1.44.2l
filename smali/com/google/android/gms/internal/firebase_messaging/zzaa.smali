###### Class com.google.android.gms.internal.firebase_messaging.zzaa (com.google.android.gms.internal.firebase_messaging.zzaa)
.class final synthetic Lcom/google/android/gms/internal/firebase_messaging/zzaa;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ld6/d;


# static fields
.field static final a:Ld6/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzaa;->a:Ld6/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ld6/e;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->l(Ljava/util/Map$Entry;Ld6/e;)V

    return-void
.end method
