###### Class com.google.android.gms.internal.firebase_auth.zzkw (com.google.android.gms.internal.firebase_auth.zzkw)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzkw;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzkw;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

.field private static volatile zzf:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzkw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:J

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkw;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    return-void
.end method

.method static synthetic p()Lcom/google/android/gms/internal/firebase_auth/zzkw;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    return-object v0
.end method


# virtual methods
.method protected final i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzkv;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 3
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 5
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    monitor-enter p2

    .line 6
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 9
    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    .line 10
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->j(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzkv;)V

    return-object p1

    .line 13
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzkw;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzkw.zza (com.google.android.gms.internal.firebase_auth.zzkw$zza)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzkw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "Lcom/google/android/gms/internal/firebase_auth/zzkw;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkw;->p()Lcom/google/android/gms/internal/firebase_auth/zzkw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzkv;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;-><init>()V

    return-void
.end method
