###### Class com.google.android.gms.internal.firebase_messaging.zzac (com.google.android.gms.internal.firebase_messaging.zzac)
.class final synthetic Lcom/google/android/gms/internal/firebase_messaging/zzac;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ld6/d;


# static fields
.field static final a:Ld6/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzac;->a:Ld6/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Ld6/e;

    sget p2, Lcom/google/android/gms/internal/firebase_messaging/zzad;->e:I

    .line 1
    new-instance p2, Ld6/b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Couldn\'t find encoder for type "

    if-eqz v0, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_1f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-direct {p2, p1}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p2
.end method
