###### Class j5.o (j5.o)
.class public final Lj5/o;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final c:Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lj5/o;


# instance fields
.field private a:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "firebaseAppName"

    const-string v1, "firebaseUserUid"

    const-string v2, "operation"

    const-string v3, "tenantId"

    const-string v4, "verifyAssertionRequest"

    const-string v5, "statusCode"

    const-string v6, "statusMessage"

    const-string v7, "timestamp"

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object v0

    sput-object v0, Lj5/o;->c:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    .line 2
    new-instance v0, Lj5/o;

    invoke-direct {v0}, Lj5/o;-><init>()V

    sput-object v0, Lj5/o;->d:Lj5/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lj5/o;->b:J

    return-void
.end method

.method public static a()Lj5/o;
    .registers 1

    .line 1
    sget-object v0, Lj5/o;->d:Lj5/o;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v0

    const-string v1, "statusCode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y3()Ljava/lang/String;

    move-result-object p1

    const-string v0, "statusMessage"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    const-string p1, "timestamp"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->f(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "verifyAssertionRequest"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "operation"

    .line 4
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "tenantId"

    .line 5
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p1

    const-string p3, "timestamp"

    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static e(Landroid/content/SharedPreferences;)V
    .registers 5

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2
    sget-object v0, Lj5/o;->c:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    .line 4
    :cond_19
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lj5/o;->e(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lj5/o;->b:J

    return-void
.end method

.method public final f(Lcom/google/firebase/auth/FirebaseAuth;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->m()Lb5/g;

    move-result-object v0

    invoke-virtual {v0}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firebaseAppName"

    const-string v3, ""

    .line 4
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->m()Lb5/g;

    move-result-object v4

    invoke-virtual {v4}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    const-string v1, "verifyAssertionRequest"

    .line 6
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    const-string v7, "timestamp"

    if-eqz v4, :cond_e2

    .line 7
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/firebase_auth/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->c(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const-string v4, "operation"

    .line 9
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "tenantId"

    const/4 v9, 0x0

    .line 10
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "firebaseUserUid"

    .line 11
    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lj5/o;->b:J

    if-eqz v8, :cond_62

    .line 13
    invoke-virtual {p1, v8}, Lcom/google/firebase/auth/FirebaseAuth;->l(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->W3(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 15
    :cond_62
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_110

    :goto_6d
    const/4 v2, -0x1

    goto :goto_8e

    :sswitch_6f
    const-string v2, "com.google.firebase.auth.internal.SIGN_IN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    goto :goto_6d

    :cond_78
    const/4 v2, 0x2

    goto :goto_8e

    :sswitch_7a
    const-string v2, "com.google.firebase.auth.internal.LINK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    goto :goto_6d

    :cond_83
    const/4 v2, 0x1

    goto :goto_8e

    :sswitch_85
    const-string v6, "com.google.firebase.auth.internal.REAUTHENTICATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    goto :goto_6d

    :cond_8e
    :goto_8e
    packed-switch v2, :pswitch_data_11e

    .line 16
    iput-object v9, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    goto :goto_de

    .line 17
    :pswitch_94
    invoke-static {v1}, Lg5/o0;->c4(Lcom/google/android/gms/internal/firebase_auth/zzfy;)Lg5/o0;

    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lg5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    goto :goto_de

    .line 19
    :pswitch_9f
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v2

    invoke-virtual {v2}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object p1

    .line 21
    invoke-static {v1}, Lg5/o0;->c4(Lcom/google/android/gms/internal/firebase_auth/zzfy;)Lg5/o0;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Lg5/s;->d4(Lg5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    goto :goto_de

    .line 23
    :cond_bc
    iput-object v9, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    goto :goto_de

    .line 24
    :pswitch_bf
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v2

    invoke-virtual {v2}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object p1

    .line 26
    invoke-static {v1}, Lg5/o0;->c4(Lcom/google/android/gms/internal/firebase_auth/zzfy;)Lg5/o0;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Lg5/s;->e4(Lg5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    goto :goto_de

    .line 28
    :cond_dc
    iput-object v9, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    .line 29
    :goto_de
    invoke-static {v0}, Lj5/o;->e(Landroid/content/SharedPreferences;)V

    return-void

    :cond_e2
    const-string p1, "statusCode"

    .line 30
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const/16 v1, 0x42a6

    .line 31
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "statusMessage"

    .line 32
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 34
    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lj5/o;->b:J

    .line 35
    invoke-static {v0}, Lj5/o;->e(Landroid/content/SharedPreferences;)V

    .line 36
    invoke-static {v2}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lj5/o;->a:Lcom/google/android/gms/tasks/Task;

    :cond_10e
    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        -0x6de69c8e -> :sswitch_85
        -0x11179c9c -> :sswitch_7a
        0x6731f73d -> :sswitch_6f
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_9f
        :pswitch_94
    .end packed-switch
.end method
