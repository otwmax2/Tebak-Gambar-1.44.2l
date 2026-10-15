###### Class androidx.datastore.preferences.protobuf.p (androidx.datastore.preferences.protobuf.p)
.class public Landroidx/datastore/preferences/protobuf/p;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/p$a;
    }
.end annotation


# static fields
.field private static b:Z = true

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile d:Landroidx/datastore/preferences/protobuf/p;

.field static final e:Landroidx/datastore/preferences/protobuf/p;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/datastore/preferences/protobuf/p$a;",
            "Landroidx/datastore/preferences/protobuf/y$e<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/p;->c()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/p;->c:Ljava/lang/Class;

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/p;-><init>(Z)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/p;->e:Landroidx/datastore/preferences/protobuf/p;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/p;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/p;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Landroidx/datastore/preferences/protobuf/p;
    .registers 2

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/p;->d:Landroidx/datastore/preferences/protobuf/p;

    if-nez v0, :cond_1d

    .line 2
    const-class v1, Landroidx/datastore/preferences/protobuf/p;

    monitor-enter v1

    .line 3
    :try_start_7
    sget-object v0, Landroidx/datastore/preferences/protobuf/p;->d:Landroidx/datastore/preferences/protobuf/p;

    if-nez v0, :cond_18

    .line 4
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/p;->b:Z

    if-eqz v0, :cond_14

    .line 5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o;->a()Landroidx/datastore/preferences/protobuf/p;

    move-result-object v0

    goto :goto_16

    :cond_14
    sget-object v0, Landroidx/datastore/preferences/protobuf/p;->e:Landroidx/datastore/preferences/protobuf/p;

    :goto_16
    sput-object v0, Landroidx/datastore/preferences/protobuf/p;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 6
    :cond_18
    monitor-exit v1

    goto :goto_1d

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :goto_1d
    return-object v0
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
    const-string v0, "androidx.datastore.preferences.protobuf.Extension"

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


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/r0;I)Landroidx/datastore/preferences/protobuf/y$e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Landroidx/datastore/preferences/protobuf/r0;",
            ">(TContainingType;I)",
            "Landroidx/datastore/preferences/protobuf/y$e<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/p;->a:Ljava/util/Map;

    new-instance v1, Landroidx/datastore/preferences/protobuf/p$a;

    invoke-direct {v1, p1, p2}, Landroidx/datastore/preferences/protobuf/p$a;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/y$e;

    return-object p1
.end method

###### Class androidx.datastore.preferences.protobuf.p.a (androidx.datastore.preferences.protobuf.p$a)
.class final Landroidx/datastore/preferences/protobuf/p$a;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/p$a;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Landroidx/datastore/preferences/protobuf/p$a;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/p$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Landroidx/datastore/preferences/protobuf/p$a;

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/p$a;->a:Ljava/lang/Object;

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/p$a;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_15

    iget v0, p0, Landroidx/datastore/preferences/protobuf/p$a;->b:I

    iget p1, p1, Landroidx/datastore/preferences/protobuf/p$a;->b:I

    if-ne v0, p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/p$a;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/p$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method
