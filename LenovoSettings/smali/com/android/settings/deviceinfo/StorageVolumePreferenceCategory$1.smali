.class Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [J

    move-object v8, v1

    check-cast v8, [J

    .line 124
    .local v8, "size":[J
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x1

    aget-wide v4, v8, v4

    const/4 v6, 0x2

    aget-wide v6, v8, v6

    invoke-virtual/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJJ)V

    goto :goto_0

    .line 128
    .end local v8    # "size":[J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 129
    .local v0, "details":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method