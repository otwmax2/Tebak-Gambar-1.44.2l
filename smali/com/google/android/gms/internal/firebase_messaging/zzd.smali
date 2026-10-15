###### Class com.google.android.gms.internal.firebase_messaging.zzd (com.google.android.gms.internal.firebase_messaging.zzd)
.class public final Lcom/google/android/gms/internal/firebase_messaging/zzd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Le6/a;


# static fields
.field public static final a:Le6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzd;->a:Le6/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le6/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le6/b<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase_messaging/zze;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzc;->a:Lcom/google/android/gms/internal/firebase_messaging/zzc;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    const-class v0, Ls6/b;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzb;->a:Lcom/google/android/gms/internal/firebase_messaging/zzb;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    const-class v0, Ls6/a;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zza;->a:Lcom/google/android/gms/internal/firebase_messaging/zza;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    return-void
.end method
