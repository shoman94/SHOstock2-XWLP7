.class Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximitySensorEventListener"
.end annotation


# instance fields
.field private mLastState:Lcom/android/contacts/ProximitySensorManager$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mListener:Lcom/android/contacts/ProximitySensorManager$Listener;

.field private final mMaxValue:F

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mWaitingForFarState:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/contacts/ProximitySensorManager$Listener;)V
    .locals 1
    .parameter "sensorManager"
    .parameter "proximitySensor"
    .parameter "listener"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    iput-object p2, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    .line 93
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    .line 94
    iput-object p3, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/contacts/ProximitySensorManager$Listener;

    .line 96
    sget-object v0, Lcom/android/contacts/ProximitySensorManager$State;->FAR:Lcom/android/contacts/ProximitySensorManager$State;

    iput-object v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    .line 98
    return-void
.end method

.method private getStateFromValue(F)Lcom/android/contacts/ProximitySensorManager$State;
    .locals 1
    .parameter "value"

    .prologue
    .line 140
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/contacts/ProximitySensorManager$State;->FAR:Lcom/android/contacts/ProximitySensorManager$State;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/contacts/ProximitySensorManager$State;->NEAR:Lcom/android/contacts/ProximitySensorManager$State;

    goto :goto_0
.end method

.method private unregisterWithoutNotification()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    .line 182
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 133
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 103
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 107
    .local v1, value:F
    invoke-direct {p0, v1}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->getStateFromValue(F)Lcom/android/contacts/ProximitySensorManager$State;

    move-result-object v0

    .line 108
    .local v0, state:Lcom/android/contacts/ProximitySensorManager$State;
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    if-ne v0, v2, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 112
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    .line 114
    iget-boolean v2, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    sget-object v3, Lcom/android/contacts/ProximitySensorManager$State;->FAR:Lcom/android/contacts/ProximitySensorManager$State;

    if-ne v2, v3, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V

    .line 117
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    sget-object v2, Lcom/android/contacts/ProximitySensorManager$1;->$SwitchMap$com$android$contacts$ProximitySensorManager$State:[I

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/contacts/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/android/contacts/ProximitySensorManager$Listener;->onNear()V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/contacts/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/android/contacts/ProximitySensorManager$Listener;->onFar()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized register()V
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V

    .line 167
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    .line 170
    .local v0, lastState:Lcom/android/contacts/ProximitySensorManager$State;
    sget-object v1, Lcom/android/contacts/ProximitySensorManager$State;->FAR:Lcom/android/contacts/ProximitySensorManager$State;

    iput-object v1, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sget-object v1, Lcom/android/contacts/ProximitySensorManager$State;->FAR:Lcom/android/contacts/ProximitySensorManager$State;

    if-eq v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/contacts/ProximitySensorManager$Listener;

    invoke-interface {v1}, Lcom/android/contacts/ProximitySensorManager$Listener;->onFar()V

    .line 176
    :cond_0
    return-void

    .line 171
    .end local v0           #lastState:Lcom/android/contacts/ProximitySensorManager$State;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized unregisterWhenFar()V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/contacts/ProximitySensorManager$State;

    sget-object v1, Lcom/android/contacts/ProximitySensorManager$State;->FAR:Lcom/android/contacts/ProximitySensorManager$State;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
