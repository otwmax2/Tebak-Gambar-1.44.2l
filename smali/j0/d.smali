###### Class j0.d (j0.d)
.class public final Lj0/d;
.super Ljava/lang/Object;
.source "PreferencesMapCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/d$a;
    }
.end annotation


# static fields
.field public static final a:Lj0/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lj0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/d$a;-><init>(Lt9/g;)V

    sput-object v0, Lj0/d;->a:Lj0/d$a;

    return-void
.end method

###### Class j0.d.a (j0.d$a)
.class public final Lj0/d$a;
.super Ljava/lang/Object;
.source "PreferencesMapCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lj0/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lj0/f;
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-static {p1}, Lj0/f;->O(Ljava/io/InputStream;)Lj0/f;

    move-result-object p1

    const-string v0, "{\n                PreferencesProto.PreferenceMap.parseFrom(input)\n            }"

    .line 2
    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/b0; {:try_start_5 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 3
    new-instance v0, Lh0/a;

    const-string v1, "Unable to parse preferences proto."

    invoke-direct {v0, v1, p1}, Lh0/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
