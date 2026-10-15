###### Class com.google.android.gms.internal.drive.zzfd (com.google.android.gms.internal.drive.zzfd)
.class public final Lcom/google/android/gms/internal/drive/zzfd;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzfd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzfd;",
        "Lcom/google/android/gms/internal/drive/zzfd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzfd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhq:Lcom/google/android/gms/internal/drive/zzfd;


# instance fields
.field private zzhd:I

.field private zzhg:J

.field private zzhi:B

.field private zzhn:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkk;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhn:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhg:J

    return-void
.end method

.method static synthetic q()Lcom/google/android/gms/internal/drive/zzfd;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    return-object v0
.end method


# virtual methods
.method protected final i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfe;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_62

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    const/4 v0, 0x0

    :cond_14
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    return-object v1

    .line 4
    :pswitch_18
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_38

    .line 6
    const-class p2, Lcom/google/android/gms/internal/drive/zzfd;

    monitor-enter p2

    .line 7
    :try_start_26
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_33

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    sget-object p3, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/drive/zzkk$zzb;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 9
    sput-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 10
    :cond_33
    monitor-exit p2

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw p1

    :cond_38
    :goto_38
    return-object p1

    .line 11
    :pswitch_39
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    return-object p1

    :pswitch_3c
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhn"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u0510\u0000\u0002\u0510\u0001"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzkk;->j(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_55
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfd$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzfd$zza;-><init>(Lcom/google/android/gms/internal/drive/zzfe;)V

    return-object p1

    .line 14
    :pswitch_5b
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzfd;-><init>()V

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_55
        :pswitch_3c
        :pswitch_39
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.drive.zzfd.zza (com.google.android.gms.internal.drive.zzfd$zza)
.class public final Lcom/google/android/gms/internal/drive/zzfd$zza;
.super Lcom/google/android/gms/internal/drive/zzkk$zza;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "Lcom/google/android/gms/internal/drive/zzfd;",
        "Lcom/google/android/gms/internal/drive/zzfd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfd;->q()Lcom/google/android/gms/internal/drive/zzfd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzfe;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzfd$zza;-><init>()V

    return-void
.end method
