###### Class androidx.datastore.preferences.protobuf.o (androidx.datastore.preferences.protobuf.o)
.class final Landroidx/datastore/preferences/protobuf/o;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o;->c()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/lang/Class;

    return-void
.end method

.method public static a()Landroidx/datastore/preferences/protobuf/p;
    .registers 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/lang/Class;

    if-eqz v0, :cond_b

    :try_start_4
    const-string v0, "getEmptyRegistry"

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/o;->b(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/p;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 3
    :catch_b
    :cond_b
    sget-object v0, Landroidx/datastore/preferences/protobuf/p;->e:Landroidx/datastore/preferences/protobuf/p;

    return-object v0
.end method

.method private static final b(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/p;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/o;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/p;

    return-object p0
.end method

.method static c()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "androidx.datastore.preferences.protobuf.ExtensionRegistry"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
